#!/usr/bin/env bb

(require '[babashka.fs :as fs]
         '[clojure.string :as str])

(defn check-args [user pass]
  (if (or (nil? user) (nil? pass))
    (do
      (println "Usage: <username> <password>")
      (System/exit 1))))

(defn make-dir! [user]
  (comment "consider adding check for naming collision")
  (fs/create-dirs (str "./" user))
  (println "Created folder:" user))

(defn make-envrc! [user pass]
  (let [envrc-path (str "./" user "/.envrc")]
    (spit envrc-path (str "source_up \n"
                          "export USER=" user "\n"
                          "export PASS=" pass "\n"))
    (println "Wrote .envrc to:" envrc-path)))

;; ENTRY POINT
(let [[USER PASS] *command-line-args*]
  (check-args USER PASS)
  (make-dir! USER)
  (make-envrc! USER PASS))

