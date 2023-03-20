import { createBrowserRouter } from "react-router-dom";
import Login from "./views/Login";
import Detail from "./views/Detail";
import NotFound from "./views/NotFound";

const router = createBrowserRouter([
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
