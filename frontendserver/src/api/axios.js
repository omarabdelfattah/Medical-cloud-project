import axios from "axios";

export default axios.create({
    baseURL: "http:///0.0.0.0:9090/",
    headers: {
        "Content-Type": "application/json",
    },
});