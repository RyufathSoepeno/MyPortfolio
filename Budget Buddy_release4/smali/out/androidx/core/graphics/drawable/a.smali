.class public final Landroidx/core/graphics/drawable/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/a$c;,
        Landroidx/core/graphics/drawable/a$b;,
        Landroidx/core/graphics/drawable/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/a$b;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/a$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/a$b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/drawable/Drawable;)I
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidx/core/graphics/drawable/a$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    :cond_b
    sget-boolean v0, Landroidx/core/graphics/drawable/a;->d:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    :try_start_13
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    sput-boolean v0, Landroidx/core/graphics/drawable/a;->d:Z

    :cond_2b
    sget-object v0, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_45

    :try_start_2f
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_3c

    return p0

    :catch_3c
    move-exception p0

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Landroidx/core/graphics/drawable/a;->c:Ljava/lang/reflect/Method;

    :cond_45
    return v2
.end method

.method public static f(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a$b;->d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public static g(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/a$a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/graphics/drawable/Drawable;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public static i(Landroid/graphics/drawable/Drawable;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$a;->e(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static j(Landroid/graphics/drawable/Drawable;FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/a$b;->e(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static k(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a$b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static l(Landroid/graphics/drawable/Drawable;I)Z
    .registers 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$c;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0

    :cond_b
    sget-boolean v0, Landroidx/core/graphics/drawable/a;->b:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2f

    :try_start_13
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    sput-boolean v3, Landroidx/core/graphics/drawable/a;->b:Z

    :cond_2f
    sget-object v0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_48

    :try_start_33
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    return v3

    :catch_3f
    move-exception p0

    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Landroidx/core/graphics/drawable/a;->a:Ljava/lang/reflect/Method;

    :cond_48
    return v2
.end method

.method public static m(Landroid/graphics/drawable/Drawable;I)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$b;->g(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static o(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a$b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static p(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    return-object p0

    :cond_7
    instance-of v0, p0, Landroidx/core/graphics/drawable/i;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/core/graphics/drawable/l;

    invoke-direct {v0, p0}, Landroidx/core/graphics/drawable/l;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_11
    return-object p0
.end method
