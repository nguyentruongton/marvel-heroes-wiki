import * as React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import { Button } from "@mui/material";

export default function SearchAppBar({ logout }) {
    return (
        <Box sx={{ flexGrow: 1 }}>
            <AppBar elevation={0} className="bg-vividRed" position="static">
                <Toolbar>
                    <Typography
                        variant="h6"
                        noWrap
                        component="div"
                        sx={{
                            flexGrow: 1,
                            display: { xs: "none", sm: "block" },
                        }}
                    >
                        Bảng điều khiển
                    </Typography>
                    <Button
                        onClick={logout}
                        variant="text"
                        className="text-white rounded-full"
                    >
                        Đăng xuất
                    </Button>
                </Toolbar>
            </AppBar>
        </Box>
    );
}
