#!/usr/bin/env bb

(require '[babashka.fs :as fs]
         '[clojure.string :as str])

(def home (System/getenv "HOME"))
(def targets-dir "/targets")

(defn usage []
  (println "Usage: newtarget <target-name>")
  (System/exit 1))

(defn create-target [tname rhost]
  (let [target-path (str targets-dir "/" tname)
        envrc-path (str target-path "/.envrc")]

    (if-not (fs/exists? target-path)
      (do
        (fs/create-dirs target-path)
        (println "Created target folder:" target-path))
      (println "Target folder already exists:" target-path))

    (when-not (fs/exists? envrc-path)
      (spit envrc-path (str "export TNAME=" tname "\n"
                            "export RHOST=" rhost "\n"
                            "export DOMAIN=\n"))
      (println "Created .envrc in" target-path))

    ;; Optional: open the folder in terminal or log path
    (println "Target ready at:" target-path)))

;; ENTRY POINT
(let [[TNAME RHOST & args] *command-line-args*]
  (if (empty? args)
    (usage)
    (create-target TNAME RHOST)))
