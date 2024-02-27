.class public final Landroidx/window/layout/SidecarCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Landroidx/window/layout/SidecarCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_14

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_14

    :cond_12
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_14
    return-object v0
.end method

.method public final getSidecarVersion()Landroidx/window/core/Version;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroidx/window/sidecar/SidecarProvider;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    invoke-virtual {v2, v1}, Landroidx/window/core/Version$Companion;->parse(Ljava/lang/String;)Landroidx/window/core/Version;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_11} :catch_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-object v0
.end method
