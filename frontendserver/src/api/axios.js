import axios from "axios";

export default axios.create({
    baseURL: "http://192.168.1.12:9090",
    headers: {
        "Content-Type": "application/json",
    },
});