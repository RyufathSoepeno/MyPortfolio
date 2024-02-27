.class public final Landroidx/window/layout/ActivityCompatHelperApi30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi30;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/window/layout/ActivityCompatHelperApi30;

    invoke-direct {v0}, Landroidx/window/layout/ActivityCompatHelperApi30;-><init>()V

    sput-object v0, Landroidx/window/layout/ActivityCompatHelperApi30;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi30;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/window/layout/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "activity.windowManager.currentWindowMetrics.bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final maximumWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/window/layout/b;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "activity.windowManager.maximumWindowMetrics.bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
