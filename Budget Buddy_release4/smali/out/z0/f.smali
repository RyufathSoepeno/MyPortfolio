.class public final Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lz0/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0}, Lz0/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lz/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    return-object p0
.end method

.method public static d()V
    .registers 0

    invoke-static {}, Lz/b;->f()V

    return-void
.end method

.method public static e(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0}, Lz0/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lz/b;->d(Ljava/lang/String;I)V

    return-void
.end method
