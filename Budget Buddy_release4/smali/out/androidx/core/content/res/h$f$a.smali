.class Landroidx/core/content/res/h$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/h$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/res/h$f$a;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/res/Resources$Theme;)V
    .registers 7

    sget-object v0, Landroidx/core/content/res/h$f$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroidx/core/content/res/h$f$a;->c:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    const/4 v2, 0x0

    if-nez v1, :cond_23

    const/4 v1, 0x1

    :try_start_9
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/content/res/h$f$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_18} :catch_19
    .catchall {:try_start_9 .. :try_end_18} :catchall_3c

    goto :goto_21

    :catch_19
    move-exception v3

    :try_start_1a
    const-string v4, "ResourcesCompat"

    const-string v5, "Failed to retrieve rebase() method"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    sput-boolean v1, Landroidx/core/content/res/h$f$a;->c:Z

    :cond_23
    sget-object v1, Landroidx/core/content/res/h$f$a;->b:Ljava/lang/reflect/Method;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_3c

    if-eqz v1, :cond_3a

    :try_start_27
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c

    goto :goto_3a

    :catch_2d
    move-exception p0

    goto :goto_30

    :catch_2f
    move-exception p0

    :goto_30
    :try_start_30
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Landroidx/core/content/res/h$f$a;->b:Ljava/lang/reflect/Method;

    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw p0
.end method
