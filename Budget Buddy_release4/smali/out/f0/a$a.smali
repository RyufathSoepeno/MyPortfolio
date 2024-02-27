.class Lf0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf0/a;


# direct methods
.method constructor <init>(Lf0/a;)V
    .registers 2

    iput-object p1, p0, Lf0/a$a;->a:Lf0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Ls0/c$b;)V
    .registers 4

    iget-object p2, p0, Lf0/a$a;->a:Lf0/a;

    sget-object v0, Ls0/r;->b:Ls0/r;

    invoke-virtual {v0, p1}, Ls0/r;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lf0/a;->f(Lf0/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lf0/a$a;->a:Lf0/a;

    invoke-static {p1}, Lf0/a;->h(Lf0/a;)Lf0/a$d;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lf0/a$a;->a:Lf0/a;

    invoke-static {p1}, Lf0/a;->h(Lf0/a;)Lf0/a$d;

    move-result-object p1

    iget-object p2, p0, Lf0/a$a;->a:Lf0/a;

    invoke-static {p2}, Lf0/a;->d(Lf0/a;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lf0/a$d;->a(Ljava/lang/String;)V

    :cond_22
    return-void
.end method
