import baseConfig from '@gramypomagamy/eslint-config'

export default [
  ...baseConfig,
  {
    languageOptions: {
      ecmaVersion: 'latest',
      sourceType: 'module',
      globals: {
        require: 'readonly',
        module: 'readonly',
        __dirname: 'readonly',
        process: 'readonly',
        console: 'readonly'
      }
    }
  }
]
