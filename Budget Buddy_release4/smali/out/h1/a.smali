.class public final Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_8

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_10

    :cond_8
    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    invoke-static {p1, p0}, La1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method
