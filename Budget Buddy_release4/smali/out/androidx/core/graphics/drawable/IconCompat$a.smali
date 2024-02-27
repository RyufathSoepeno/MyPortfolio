.class Landroidx/core/graphics/drawable/IconCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/Object;)I
    .registers 7

    const-string v0, "Unable to get icon resource"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_f

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->a(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_28} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_28} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_28} :catch_29

    return p0

    :catch_29
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_2e
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_33
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    const-string v0, "Unable to get icon package"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_f

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResPackage"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_2b
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_30
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static c(Ljava/lang/Object;)Landroid/net/Uri;
    .registers 8

    const-string v0, "Unable to get icon uri"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_f

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$c;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getUri"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_2b
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_30
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static d(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 6

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    packed-switch v0, :pswitch_data_ba

    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_20

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$d;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto/16 :goto_a4

    :cond_20
    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-lt v0, v2, :cond_76

    goto :goto_6d

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load adaptive icon from uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context is required to resolve the file uri of the icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->d()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_65
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_72

    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_6d
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$b;->b(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_a4

    :cond_72
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_76
    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_a0

    :pswitch_7b
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_a4

    :pswitch_84
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, [B

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_a4

    :pswitch_91
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->c()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_a4

    :pswitch_9c
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_a0
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_a4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_ab

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :cond_ab
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    if-eq p0, v0, :cond_b4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    :cond_b4
    return-object p1

    :pswitch_b5
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :pswitch_data_ba
    .packed-switch -0x1
        :pswitch_b5
        :pswitch_8
        :pswitch_9c
        :pswitch_91
        :pswitch_84
        :pswitch_7b
        :pswitch_65
        :pswitch_10
    .end packed-switch
.end method
