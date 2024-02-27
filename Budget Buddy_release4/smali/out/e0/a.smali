.class public final Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/a$b;
    }
.end annotation


# static fields
.field private static e:Le0/a;

.field private static f:Z


# instance fields
.field private a:Lh0/d;

.field private b:Lg0/a;

.field private c:Lio/flutter/embedding/engine/FlutterJNI$c;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lh0/d;Lg0/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0/a;->a:Lh0/d;

    iput-object p2, p0, Le0/a;->b:Lg0/a;

    iput-object p3, p0, Le0/a;->c:Lio/flutter/embedding/engine/FlutterJNI$c;

    iput-object p4, p0, Le0/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lh0/d;Lg0/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;Le0/a$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Le0/a;-><init>(Lh0/d;Lg0/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static e()Le0/a;
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Le0/a;->f:Z

    sget-object v0, Le0/a;->e:Le0/a;

    if-nez v0, :cond_12

    new-instance v0, Le0/a$b;

    invoke-direct {v0}, Le0/a$b;-><init>()V

    invoke-virtual {v0}, Le0/a$b;->a()Le0/a;

    move-result-object v0

    sput-object v0, Le0/a;->e:Le0/a;

    :cond_12
    sget-object v0, Le0/a;->e:Le0/a;

    return-object v0
.end method


# virtual methods
.method public a()Lg0/a;
    .registers 2

    iget-object v0, p0, Le0/a;->b:Lg0/a;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Le0/a;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()Lh0/d;
    .registers 2

    iget-object v0, p0, Le0/a;->a:Lh0/d;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/FlutterJNI$c;
    .registers 2

    iget-object v0, p0, Le0/a;->c:Lio/flutter/embedding/engine/FlutterJNI$c;

    return-object v0
.end method
