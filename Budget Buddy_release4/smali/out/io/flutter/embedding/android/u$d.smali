.class Lio/flutter/embedding/android/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/a<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/u;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/u;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/embedding/android/u$d;->a:Lio/flutter/embedding/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/android/u$d;->a:Lio/flutter/embedding/android/u;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/u;->setWindowInfoListenerDisplayFeatures(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/u$d;->a(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
