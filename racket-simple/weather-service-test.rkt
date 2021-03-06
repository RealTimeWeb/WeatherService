;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname weather-service-test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "weather-service-offline.rkt")

(define r (get-weather "Newark, DE"))
(check-expect r (get-weather "Newark, DE"))
(check-expect r (get-weather "Seattle, WA"))

(weather-temperature (report-current r))
(weather-dewpoint (report-current r))
(weather-humidity (report-current r))
(weather-visibility (report-current r))
(weather-pressure (report-current r))
(wind-speed (weather-wind (report-current r)))
(wind-direction (weather-wind (report-current r)))
(wind-chill (weather-wind (report-current r)))
(weather-wind (report-current r))
(weather-description (report-current r))
(weather-image-url (report-current r))

(forecast-temperature (report-tonight r))
(forecast-temperature-label (report-tonight r))
(forecast-probability-of-precipitation (report-tonight r))
(forecast-image-url (report-tonight r))
(forecast-description (report-tonight r))
(forecast-long-description (report-tonight r))

(forecast-temperature-label (report-tonight r))
(forecast-temperature-label (report-tomorrow r))
(forecast-temperature-label (report-day-after r))

(location-latitude (report-location r))
(location-longitude (report-location r))
(location-elevation (report-location r))
(location-name (report-location r))

; The coordinates given are outside of the continental United States.
;(get-weather "221B Baker Street, London, England")

; The address could not be found. Please make sure you spelled it correctly.
;(get-weather "")

(get-weather "Memphis, TN")