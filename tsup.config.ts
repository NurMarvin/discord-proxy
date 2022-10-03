import { defineConfig } from "tsup";

export default defineConfig(({ watch }) => ({
  entry: ["src/index.ts"],
  clean: true,
  target: "node18",
  minify: !watch,
}));
