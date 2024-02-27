.class Landroidx/core/graphics/drawable/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/graphics/drawable/Drawable;)I
    .registers 1

    invoke-static {p0}, Landroidx/core/graphics/drawable/b;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method static b(Landroid/graphics/drawable/Drawable;I)Z
    .registers 2

    invoke-static {p0, p1}, Lf/b;->a(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0
.end method
