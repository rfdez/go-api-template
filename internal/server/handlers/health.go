package handlers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func Health() gin.HandlerFunc {
	return func(c *gin.Context) {
		// This is where you would add a health check for your infrastructure components.
		c.Status(http.StatusNoContent)
	}
}
