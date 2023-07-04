const express = require('express')
const app = express()
const port = 8080

// Get value from environment variable named CUSTOM_ENV_VAR or default
const env_var = process.env.CUSTOM_ENV_VAR || 'not set'

app.get('/', (req, res) => {
    res.send('Hello from a Node.js app! \nCustom env var is ' + env_var + '\n')
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
    console.log(`CUSTOM_ENV_VAR is ${env_var}`)
})
