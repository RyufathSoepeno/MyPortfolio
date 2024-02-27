.class Landroidx/core/view/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$a;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v0, "android.view.View$AttachInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mStableInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/m1$a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v2, "mContentInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-boolean v1, Landroidx/core/view/m1$a;->d:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_48

    :catch_2d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/m1;
    .registers 5

    sget-boolean v0, Landroidx/core/view/m1$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6b

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    sget-object v2, Landroidx/core/view/m1$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6b

    sget-object v2, Landroidx/core/view/m1$a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroidx/core/view/m1$a;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_6b

    if-eqz v0, :cond_6b

    new-instance v3, Landroidx/core/view/m1$b;

    invoke-direct {v3}, Landroidx/core/view/m1$b;-><init>()V

    invoke-static {v2}, Landroidx/core/graphics/b;->c(Landroid/graphics/Rect;)Landroidx/core/graphics/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/view/m1$b;->b(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;

    move-result-object v2

    invoke-static {v0}, Landroidx/core/graphics/b;->c(Landroid/graphics/Rect;)Landroidx/core/graphics/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/view/m1$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/m1$b;->a()Landroidx/core/view/m1;

    move-result-object v0

    invoke-virtual {v0, v0}, Landroidx/core/view/m1;->s(Landroidx/core/view/m1;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/m1;->d(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get insets from AttachInfo. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return-object v1
.end method
