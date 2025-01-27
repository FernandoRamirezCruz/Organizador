const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

module.exports = environment;
environment.plugins.prepend('Provide', 
    new webpack.ProvidePlugin(
        {
            $: 'jquery',
            jQuery: 'jquery',
            'window.jQuery': 'jquery',
            Popper: ['popper.js', 'default']
        }
    )
)
module.exports = environment
