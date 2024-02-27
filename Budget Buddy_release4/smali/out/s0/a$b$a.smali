.class Ls0/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls0/a$b;->a(Ljava/nio/ByteBuffer;Ls0/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ls0/c$b;

.field final synthetic b:Ls0/a$b;


# direct methods
.method constructor <init>(Ls0/a$b;Ls0/c$b;)V
    .registers 3

    iput-object p1, p0, Ls0/a$b$a;->b:Ls0/a$b;

    iput-object p2, p0, Ls0/a$b$a;->a:Ls0/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ls0/a$b$a;->a:Ls0/c$b;

    iget-object v1, p0, Ls0/a$b$a;->b:Ls0/a$b;

    iget-object v1, v1, Ls0/a$b;->b:Ls0/a;

    invoke-static {v1}, Ls0/a;->a(Ls0/a;)Ls0/h;

    move-result-object v1

    invoke-interface {v1, p1}, Ls0/h;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls0/c$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
