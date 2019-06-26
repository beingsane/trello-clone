Rails.application.config.session_store :redis_store,
                                       servers: [
                                           {
                                               host: ENV.fetch('REDIS_HOST') { 'localhost' },
                                               port: ENV.fetch('REDIS_PORT') { '6379' },
                                               db: 0
                                               # password: "mysecret",
                                               # namespace: "session"
                                           },
                                           {
                                               host: ENV.fetch('REDIS_HOST') { 'localhost' },
                                               port: ENV.fetch('REDIS_PORT') { '6379' },
                                               db: 1
                                           }
                                       ],
                                       expire_after: 90.minutes,
                                       key: "_#{Rails.env}_web_session"