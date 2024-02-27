.class public final synthetic Lb0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lb0/o;Lb0/i;Ljava/lang/Runnable;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lb0/n$a;

    invoke-direct {v0, p0, p1}, Lb0/n$a;-><init>(Lb0/o;Lb0/i;)V

    move-object p1, v0

    :goto_a
    new-instance v0, Lb0/k;

    invoke-direct {v0, p1, p2}, Lb0/k;-><init>(Lb0/j;Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Lb0/o;->c(Lb0/k;)V

    return-void
.end method

.method public static b(Ljava/lang/String;II)Lb0/o;
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    new-instance p1, Lb0/s;

    invoke-direct {p1, p0, p2}, Lb0/s;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_9
    new-instance v0, Lb0/q;

    invoke-direct {v0, p0, p1, p2}, Lb0/q;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
