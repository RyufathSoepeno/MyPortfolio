.class public final Lz/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method public static a(Ljava/lang/String;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lz/b;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_8

    invoke-static {p0, p1}, Lz/f;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    :cond_8
    invoke-static {p0, p1}, Lz/b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .registers 11

    const-string v0, "asyncTraceBegin"

    :try_start_2
    sget-object v1, Lz/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_20

    const-class v1, Landroid/os/Trace;

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lz/b;->c:Ljava/lang/reflect/Method;

    :cond_20
    sget-object v1, Lz/b;->c:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    sget-wide v7, Lz/b;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-static {v0, p0}, Lz/b;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3d
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lz/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lz/b;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_8

    invoke-static {p0, p1}, Lz/f;->b(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    :cond_8
    invoke-static {p0, p1}, Lz/b;->e(Ljava/lang/String;I)V

    return-void
.end method

.method private static e(Ljava/lang/String;I)V
    .registers 11

    const-string v0, "asyncTraceEnd"

    :try_start_2
    sget-object v1, Lz/b;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_20

    const-class v1, Landroid/os/Trace;

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lz/b;->d:Ljava/lang/reflect/Method;

    :cond_20
    sget-object v1, Lz/b;->d:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    sget-wide v7, Lz/b;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v4

    aput-object p0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-static {v0, p0}, Lz/b;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3d
    return-void
.end method

.method public static f()V
    .registers 0

    invoke-static {}, Lz/c;->b()V

    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_f

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via reflection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Trace"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static h()Z
    .registers 1

    :try_start_0
    sget-object v0, Lz/b;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_9

    invoke-static {}, Lz/a;->a()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    :cond_9
    invoke-static {}, Lz/b;->i()Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .registers 7

    const-string v0, "isTagEnabled"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lz/b;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_25

    const-class v2, Landroid/os/Trace;

    const-string v5, "TRACE_TAG_APP"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    sput-wide v5, Lz/b;->a:J

    const-class v2, Landroid/os/Trace;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lz/b;->b:Ljava/lang/reflect/Method;

    :cond_25
    sget-object v2, Lz/b;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    sget-wide v5, Lz/b;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3c

    return v0

    :catch_3c
    move-exception v2

    invoke-static {v0, v2}, Lz/b;->g(Ljava/lang/String;Ljava/lang/Exception;)V

    return v1
.end method
