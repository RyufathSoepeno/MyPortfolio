.class La1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_11

    sget-object v0, Le1/b;->a:Le1/a;

    invoke-virtual {v0, p0, p1}, Le1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method
