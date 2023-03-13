/// <reference types="vitest" />

import { defineConfig } from 'vitest/config'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  test: {
    environment: 'jsdom',
    include: './src/__tests__/**/*.spec.bs.js',
    globals: true,
    setupFiles: './src/__tests__/Setup.bs.js',
  },
})
