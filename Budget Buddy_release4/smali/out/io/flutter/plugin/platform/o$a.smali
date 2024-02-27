.class Lio/flutter/plugin/platform/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/view/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/o;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/o;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/platform/o$a;->a:Lio/flutter/plugin/platform/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lio/flutter/plugin/platform/o$a;->a:Lio/flutter/plugin/platform/o;

    invoke-static {v0}, Lio/flutter/plugin/platform/o;->a(Lio/flutter/plugin/platform/o;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_f
    return-void
.end method
