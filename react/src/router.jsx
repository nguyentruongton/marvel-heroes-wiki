import { createBrowserRouter } from "react-router-dom";
import Login from "./views/Login";
import Detail from "./views/Detail";
import NotFound from "./views/NotFound";
import Home from "./views/Home";

const router = createBrowserRouter([
    {
        path: "/",
        element: <Home />,
    },
    {
        path: "/login",
        element: <Login />,
    },
    {
        path: "/detail",
        element: <Detail />,
    },
    {
        path: "*",
        element: <NotFound />,
    },
]);

export default router;
