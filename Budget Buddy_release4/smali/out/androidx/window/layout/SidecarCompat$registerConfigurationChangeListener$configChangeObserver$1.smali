.class public final Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SidecarCompat;->registerConfigurationChangeListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Landroidx/window/layout/SidecarCompat;


# direct methods
.method constructor <init>(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    iput-object p2, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    invoke-static {p1}, Landroidx/window/layout/SidecarCompat;->access$getExtensionCallback$p(Landroidx/window/layout/SidecarCompat;)Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_19

    :cond_e
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/window/layout/SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1;->this$0:Landroidx/window/layout/SidecarCompat;

    invoke-virtual {v1, v0}, Landroidx/window/layout/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :goto_19
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
