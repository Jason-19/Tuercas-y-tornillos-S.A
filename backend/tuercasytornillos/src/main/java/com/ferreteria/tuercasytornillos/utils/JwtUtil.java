package com.ferreteria.tuercasytornillos.utils;

import java.util.Date;

import javax.crypto.SecretKey;

import com.ferreteria.tuercasytornillos.dto.LoginDTO;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import java.util.Base64;

public class JwtUtil {

    public static String token = "";
    private static final String SECRET = "eA3/7u4RP1drkfvCZHcMBrDPnX4coI1Ls2DK6D1df+k="; 
    private static final SecretKey SECRET_KEY = Keys.hmacShaKeyFor(Base64.getDecoder().decode(SECRET));

    public static String generateToken(String username) {
        long expirationTime = 1000 * 60 * 60;

        return Jwts.builder()
                .setSubject(username)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + expirationTime))
                .signWith(SECRET_KEY, SignatureAlgorithm.HS256)
                .compact();
    }

    public static String getToken() {
        return token;
    }

    public static void setToken(LoginDTO token) {

        JwtUtil.token = generateToken(token.getUsername());
    }


    public static String getUsernameFromToken(String token) {
        Claims claims = Jwts.parserBuilder()
                .setSigningKey(SECRET_KEY)
                .build()
                .parseClaimsJws(token)
                .getBody();
        return claims.getSubject();
    }

    public static void deleteToken() {
        JwtUtil.token = "";
    }
}
