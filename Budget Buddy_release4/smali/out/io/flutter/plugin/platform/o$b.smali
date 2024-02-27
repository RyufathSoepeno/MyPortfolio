.class Lio/flutter/plugin/platform/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/view/r$b;


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

    iput-object p1, p0, Lio/flutter/plugin/platform/o$b;->a:Lio/flutter/plugin/platform/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrimMemory(I)V
    .registers 3

    const/16 v0, 0x50

    if-ne p1, v0, :cond_10

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_10

    iget-object p1, p0, Lio/flutter/plugin/platform/o$b;->a:Lio/flutter/plugin/platform/o;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/o;->b(Lio/flutter/plugin/platform/o;Z)Z

    :cond_10
    return-void
.end method
