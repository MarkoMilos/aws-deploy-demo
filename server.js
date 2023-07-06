const express = require('express')
const app = express()
const port = 8080

// Get value from environment variable named SECRET_ENV or default
const env_var = process.env.SECRET_ENV || 'not set'

app.get('/', (req, res) => {
    res.send('Hello from a Node.js app! \nSecret variable is ' + env_var + '\n')
})

app.listen(port, () => {
    console.log(`Example Node.js app listening on port ${port}`)
    console.log(`SECRET_ENV is ${env_var}`)
})
