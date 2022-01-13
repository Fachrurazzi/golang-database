package repository

import (
	belajar_golang_database_mysql "belajar-golang-database-mysql"
	"belajar-golang-database-mysql/entity"
	"context"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"testing"
)

func TestCommentRepository(t *testing.T) {
	commentRepository := NewCommentRepository(belajar_golang_database_mysql.GetConnection())

	ctx := context.Background()
	comment := entity.Comment{
		Email:   "repository@test.com",
		Comment: "Test Repository",
	}

	result, err := commentRepository.Insert(ctx, comment)
	if err != nil {
		panic(err)
	}

	fmt.Println(result)

}

func TestFindById(t *testing.T) {
	commentRepository := NewCommentRepository(belajar_golang_database_mysql.GetConnection())

	ctx := context.Background()
	comment, err := commentRepository.FindById(ctx, 24)
	if err != nil {
		panic(err)
	}

	fmt.Println(comment)
}

func TestFindAll(t *testing.T) {
	commentRepository := NewCommentRepository(belajar_golang_database_mysql.GetConnection())

	ctx := context.Background()

	comments, err := commentRepository.FindAll(ctx)
	if err != nil {
		panic(err)
	}

	fmt.Println(comments)
}
