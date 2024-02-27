.class Landroidx/core/app/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/f;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Landroidx/core/app/f$c;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/app/f$c;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    sget-object v0, Landroidx/core/app/f;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1c

    iget-object v4, p0, Landroidx/core/app/f$c;->e:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/core/app/f$c;->f:Ljava/lang/Object;

    aput-object v6, v5, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v5, v1

    const-string v1, "AppCompat recreation"

    aput-object v1, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_1c
    sget-object v0, Landroidx/core/app/f;->e:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroidx/core/app/f$c;->e:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/core/app/f$c;->f:Ljava/lang/Object;

    aput-object v5, v3, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2d} :catch_37
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_54

    :catchall_2e
    move-exception v0

    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_54

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_54

    :cond_53
    throw v0

    :cond_54
    :goto_54
    return-void
.end method
