.class Lr0/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr0/m;


# direct methods
.method constructor <init>(Lr0/m;)V
    .registers 2

    iput-object p1, p0, Lr0/m$b;->a:Lr0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 5

    iget-object v0, p1, Ls0/i;->a:Ljava/lang/String;

    iget-object p1, p1, Ls0/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p2}, Ls0/j$d;->c()V

    goto :goto_4b

    :cond_1b
    iget-object v0, p0, Lr0/m$b;->a:Lr0/m;

    check-cast p1, [B

    invoke-static {v0, p1}, Lr0/m;->b(Lr0/m;[B)[B

    const/4 p1, 0x0

    :goto_23
    invoke-interface {p2, p1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_27
    iget-object p1, p0, Lr0/m$b;->a:Lr0/m;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lr0/m;->c(Lr0/m;Z)Z

    iget-object p1, p0, Lr0/m$b;->a:Lr0/m;

    invoke-static {p1}, Lr0/m;->d(Lr0/m;)Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p1, p0, Lr0/m$b;->a:Lr0/m;

    iget-boolean v0, p1, Lr0/m;->a:Z

    if-nez v0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-static {p1, p2}, Lr0/m;->f(Lr0/m;Ls0/j$d;)Ls0/j$d;

    goto :goto_4b

    :cond_40
    :goto_40
    iget-object p1, p0, Lr0/m$b;->a:Lr0/m;

    invoke-static {p1}, Lr0/m;->a(Lr0/m;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lr0/m;->e(Lr0/m;[B)Ljava/util/Map;

    move-result-object p1

    goto :goto_23

    :goto_4b
    return-void
.end method
