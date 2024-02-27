.class public final Lc1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lj1/p;Ljava/lang/Object;Lc1/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj1/p<",
            "-TR;-",
            "Lc1/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lc1/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ld1/b;->a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p0

    invoke-static {p0}, Ld1/b;->b(Lc1/d;)Lc1/d;

    move-result-object p0

    sget-object p1, La1/k;->e:La1/k$a;

    sget-object p1, La1/q;->a:La1/q;

    invoke-static {p1}, La1/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lc1/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
