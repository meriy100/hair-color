module.exports = {
  entry: {
    application: './app/javascript/application.tsx'
  },
  output: {
    path: `${__dirname}/../../../app/assets/javascripts`,
    filename: '[name].bundle.js'
  },
  resolve: {
    extensions: ['.ts', '.tsx', '.js']
  },
  module: {
    rules: [
      {
        test: /\.(ts|tsx)?$/,
        use: [
          {loader: 'ts-loader'}
        ]
      }, {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        loader: 'babel?presets[]=react,presets[]=es2015,presets[]=stage-2'
      } , {
        test: /\.json$/,
        loader: 'json'
      }, {
        test: /\.(css|scss)$/,
        use: [
          'style-loader',
          {
            loader: 'css-loader',
            options: {
              url: false,
              sourceMap: false,
            },
          },
          'sass-loader'
        ]
      } ,
    ]
  }
}
