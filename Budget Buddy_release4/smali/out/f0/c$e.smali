.class Lf0/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf0/c$e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ls0/c$d;)Lf0/c$d;
    .registers 3

    invoke-virtual {p1}, Ls0/c$d;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lf0/c$h;

    iget-object v0, p0, Lf0/c$e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, Lf0/c$h;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1

    :cond_e
    new-instance p1, Lf0/c$c;

    iget-object v0, p0, Lf0/c$e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, Lf0/c$c;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method
