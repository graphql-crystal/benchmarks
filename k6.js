import http from "k6/http";
import { check } from "k6";
//import { cpus } from "os";

export const options = {
  //vus: cpus.length * 50,
  //duration: "30s",
};

export default function () {
  let res = http.post(
    "http://127.0.0.1:8000/graphql",
    '{"query":"{ hello }"}',
    {
      headers: { "Content-Type": "application/json" },
    }
  );
  //check(res, {
  //  "is status 200": (r) => r.status === 200,
  //  "expected result": (r) => r.json().data.hello == "world",
  //});
}

export function handleSummary(data) {
  return {
    stdout: JSON.stringify(data),
  };
}
