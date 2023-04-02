import * as React from "react";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import { useEffect } from "react";
import axiosClient from "../axios-client";
import { Button, Typography } from "@mui/material";
import { useNavigate } from "react-router-dom";

export default function TableHero() {
    const [heros, setHeros] = React.useState([]);
    const navigate = useNavigate();
    useEffect(() => {
        axiosClient.get("/heros").then(({ data }) => {
            setHeros(data.data);
        });
    });

    return (
        <>
            <div className="mb-4">
                <Button
                    disableElevation
                    variant="contained"
                    className="rounded-full bg-vividRed normal-case"
                    onClick={() => navigate("/admin/create")}
                >
                    Thêm mới
                </Button>
            </div>
            <TableContainer component={Paper}>
                <Table sx={{ minWidth: 650 }} aria-label="simple table">
                    <TableHead>
                        <TableRow>
                            {/* <TableCell>ID</TableCell> */}
                            <TableCell align="left">Họ tên</TableCell>
                            <TableCell align="left">Bí danh</TableCell>
                            <TableCell align="left">Mô tả</TableCell>
                            <TableCell align="center">Hành động</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {heros.map((row) => (
                            <TableRow
                                key={row.id}
                                sx={{
                                    "&:last-child td, &:last-child th": {
                                        border: 0,
                                    },
                                }}
                            >
                                {/* <TableCell component="th" scope="row">
                                    {row.id}
                                </TableCell> */}
                                <TableCell align="left">
                                    {row.realName}
                                </TableCell>
                                <TableCell align="left">{row.alias}</TableCell>
                                <TableCell align="left">
                                    <Typography className="limit-text">
                                        {row.description}
                                    </Typography>
                                </TableCell>
                                <TableCell align="center">
                                    <Button
                                        variant="outlined"
                                        disableElevation
                                        className="rounded-full normal-case"
                                        color="info"
                                        onClick={() => {
                                            // console.log(row.id);
                                            navigate(`/admin/${row.id}`);
                                        }}
                                    >
                                        Chỉnh sửa
                                    </Button>
                                </TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </>
    );
}
