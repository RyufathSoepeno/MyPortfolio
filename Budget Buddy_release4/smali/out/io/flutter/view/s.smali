.class public Lio/flutter/view/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/s$c;,
        Lio/flutter/view/s$b;
    }
.end annotation


# static fields
.field private static e:Lio/flutter/view/s;

.field private static f:Lio/flutter/view/s$b;


# instance fields
.field private a:J

.field private b:Lio/flutter/embedding/engine/FlutterJNI;

.field private c:Lio/flutter/view/s$c;

.field private final d:Lio/flutter/embedding/engine/FlutterJNI$b;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/flutter/view/s;->a:J

    new-instance v0, Lio/flutter/view/s$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/view/s$c;-><init>(Lio/flutter/view/s;J)V

    iput-object v0, p0, Lio/flutter/view/s;->c:Lio/flutter/view/s$c;

    new-instance v0, Lio/flutter/view/s$a;

    invoke-direct {v0, p0}, Lio/flutter/view/s$a;-><init>(Lio/flutter/view/s;)V

    iput-object v0, p0, Lio/flutter/view/s;->d:Lio/flutter/embedding/engine/FlutterJNI$b;

    iput-object p1, p0, Lio/flutter/view/s;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method static synthetic a(Lio/flutter/view/s;)J
    .registers 3

    iget-wide v0, p0, Lio/flutter/view/s;->a:J

    return-wide v0
.end method

.method static synthetic b(Lio/flutter/view/s;J)J
    .registers 3

    iput-wide p1, p0, Lio/flutter/view/s;->a:J

    return-wide p1
.end method

.method static synthetic c(Lio/flutter/view/s;)Lio/flutter/embedding/engine/FlutterJNI;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/s;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/view/s;)Lio/flutter/view/s$c;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/s;->c:Lio/flutter/view/s$c;

    return-object p0
.end method

.method static synthetic e(Lio/flutter/view/s;Lio/flutter/view/s$c;)Lio/flutter/view/s$c;
    .registers 2

    iput-object p1, p0, Lio/flutter/view/s;->c:Lio/flutter/view/s$c;

    return-object p1
.end method

.method public static f(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/s;
    .registers 7

    sget-object v0, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    if-nez v0, :cond_b

    new-instance v0, Lio/flutter/view/s;

    invoke-direct {v0, p1}, Lio/flutter/view/s;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    sput-object v0, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    :cond_b
    sget-object v0, Lio/flutter/view/s;->f:Lio/flutter/view/s$b;

    if-nez v0, :cond_1e

    new-instance v0, Lio/flutter/view/s$b;

    sget-object v1, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lio/flutter/view/s$b;-><init>(Lio/flutter/view/s;Landroid/hardware/display/DisplayManager;)V

    sput-object v0, Lio/flutter/view/s;->f:Lio/flutter/view/s$b;

    invoke-virtual {v0}, Lio/flutter/view/s$b;->a()V

    :cond_1e
    sget-object v0, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    iget-wide v0, v0, Lio/flutter/view/s;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_40

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    sget-object v0, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v3, p0

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lio/flutter/view/s;->a:J

    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    :cond_40
    sget-object p0, Lio/flutter/view/s;->e:Lio/flutter/view/s;

    return-object p0
.end method


# virtual methods
.method public g()V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/s;->b:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/view/s;->d:Lio/flutter/embedding/engine/FlutterJNI$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V

    return-void
.end method
