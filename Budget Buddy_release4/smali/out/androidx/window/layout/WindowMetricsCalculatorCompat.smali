.class public final Landroidx/window/layout/WindowMetricsCalculatorCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/WindowMetricsCalculator;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    const-class v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMetricsCalculatorC\u2026at::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCutoutForDisplay(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .registers 9

    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDisplayInfo"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "displayCutout"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/DisplayCutout;

    if-eqz v0, :cond_5b

    check-cast p1, Landroid/view/DisplayCutout;
    :try_end_4a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4a} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4a} :catch_53
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4a} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4a} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4a} :catch_4d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_5c

    :catch_4b
    move-exception p1

    goto :goto_56

    :catch_4d
    move-exception p1

    goto :goto_56

    :catch_4f
    move-exception p1

    goto :goto_56

    :catch_51
    move-exception p1

    goto :goto_56

    :catch_53
    move-exception p1

    goto :goto_56

    :catch_55
    move-exception p1

    :goto_56
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    const/4 p1, 0x0

    :goto_5c
    return-object p1
.end method

.method private final getNavigationBarHeight(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method private final getRectSizeFromDisplay(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public computeCurrentWindowMetrics(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    sget-object v0, Landroidx/window/layout/ActivityCompatHelperApi30;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi30;

    invoke-virtual {v0, p1}, Landroidx/window/layout/ActivityCompatHelperApi30;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_31

    :cond_12
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeWindowBoundsQ$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_31

    :cond_1b
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_24

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeWindowBoundsP$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_31

    :cond_24
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2d

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeWindowBoundsN$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_31

    :cond_2d
    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeWindowBoundsIceCreamSandwich$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    :goto_31
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    invoke-direct {v0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public computeMaximumWindowMetrics(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    sget-object v0, Landroidx/window/layout/ActivityCompatHelperApi30;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi30;

    invoke-virtual {v0, p1}, Landroidx/window/layout/ActivityCompatHelperApi30;->maximumWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_2e

    :cond_12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getRealSizeForDisplay$window_release(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    :goto_2e
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    invoke-direct {v0, p1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final computeWindowBoundsIceCreamSandwich$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "defaultDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getRealSizeForDisplay$window_release(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_29

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_24

    goto :goto_29

    :cond_24
    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2c

    :cond_29
    :goto_29
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    :goto_2c
    return-object v1
.end method

.method public final computeWindowBoundsN$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    sget-object v2, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    invoke-virtual {v2, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "defaultDisplay"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getRealSizeForDisplay$window_release(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, p1

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_36

    add-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_41

    :cond_36
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int v3, v2, p1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v1, :cond_41

    add-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_41
    :goto_41
    return-object v0
.end method

.method public final computeWindowBoundsP$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_13
    const-class v3, Landroid/content/res/Configuration;

    const-string v4, "windowConfiguration"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    invoke-virtual {v3, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_29} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_29} :catch_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_29} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_29} :catch_6a

    const-string v4, "null cannot be cast to non-null type android.graphics.Rect"

    if-eqz v3, :cond_4d

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getBounds"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    check-cast v1, Landroid/graphics/Rect;

    :goto_43
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_79

    :cond_47
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getAppBounds"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_64

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_43

    :cond_64
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2d .. :try_end_6a} :catch_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_6a} :catch_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_6a} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_6a} :catch_6a

    :catch_6a
    move-exception v1

    goto :goto_71

    :catch_6c
    move-exception v1

    goto :goto_71

    :catch_6e
    move-exception v1

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getRectSizeFromDisplay(Landroid/app/Activity;Landroid/graphics/Rect;)V

    :goto_79
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    sget-object v4, Landroidx/window/layout/DisplayCompatHelperApi17;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi17;

    const-string v5, "currentDisplay"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Landroidx/window/layout/DisplayCompatHelperApi17;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    sget-object v4, Landroidx/window/layout/ActivityCompatHelperApi24;->INSTANCE:Landroidx/window/layout/ActivityCompatHelperApi24;

    invoke-virtual {v4, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_ba

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v6, v5

    iget v8, v3, Landroid/graphics/Point;->y:I

    if-ne v7, v8, :cond_a8

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_ba

    :cond_a8
    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v6, v5

    iget v8, v3, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_b4

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    goto :goto_ba

    :cond_b4
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-ne v6, v5, :cond_ba

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_ba
    :goto_ba
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_ca

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_114

    :cond_ca
    invoke-virtual {v4, p1}, Landroidx/window/layout/ActivityCompatHelperApi24;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_114

    invoke-direct {p0, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->getCutoutForDisplay(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_114

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget-object v4, Landroidx/window/layout/DisplayCompatHelperApi28;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi28;

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_e2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_e2
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_f6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_f6
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetTop(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_100

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_100
    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result v2

    if-ne v1, v2, :cond_114

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, p1}, Landroidx/window/layout/DisplayCompatHelperApi28;->safeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_114
    return-object v0
.end method

.method public final computeWindowBoundsQ$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_d
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBounds"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_52

    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_42} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_42} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_42} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_42} :catch_42

    :catch_42
    move-exception v0

    goto :goto_49

    :catch_44
    move-exception v0

    goto :goto_49

    :catch_46
    move-exception v0

    goto :goto_49

    :catch_48
    move-exception v0

    :goto_49
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeWindowBoundsP$window_release(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_52
    return-object v2
.end method

.method public final getRealSizeForDisplay$window_release(Landroid/view/Display;)Landroid/graphics/Point;
    .registers 4

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Landroidx/window/layout/DisplayCompatHelperApi17;->INSTANCE:Landroidx/window/layout/DisplayCompatHelperApi17;

    invoke-virtual {v1, p1, v0}, Landroidx/window/layout/DisplayCompatHelperApi17;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    return-object v0
.end method
