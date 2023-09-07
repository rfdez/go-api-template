package handlers

import "github.com/gin-gonic/gin"

func Ping() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.String(200, "pong")
	}
}
