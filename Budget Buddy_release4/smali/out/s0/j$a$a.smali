.class Ls0/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/j$a;->a(Ljava/nio/ByteBuffer;Ls0/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls0/c$b;

.field final synthetic b:Ls0/j$a;


# direct methods
.method constructor <init>(Ls0/j$a;Ls0/c$b;)V
    .registers 3

    iput-object p1, p0, Ls0/j$a$a;->b:Ls0/j$a;

    iput-object p2, p0, Ls0/j$a$a;->a:Ls0/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ls0/j$a$a;->a:Ls0/c$b;

    iget-object v1, p0, Ls0/j$a$a;->b:Ls0/j$a;

    iget-object v1, v1, Ls0/j$a;->b:Ls0/j;

    invoke-static {v1}, Ls0/j;->a(Ls0/j;)Ls0/k;

    move-result-object v1

    invoke-interface {v1, p1}, Ls0/k;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls0/c$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ls0/j$a$a;->a:Ls0/c$b;

    iget-object v1, p0, Ls0/j$a$a;->b:Ls0/j$a;

    iget-object v1, v1, Ls0/j$a;->b:Ls0/j;

    invoke-static {v1}, Ls0/j;->a(Ls0/j;)Ls0/k;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ls0/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls0/c$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Ls0/j$a$a;->a:Ls0/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ls0/c$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
