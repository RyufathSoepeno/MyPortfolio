.class Landroidx/core/graphics/drawable/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method static b(Landroid/graphics/drawable/Drawable;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method static e(Landroid/graphics/drawable/Drawable;FF)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method static f(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method static g(Landroid/graphics/drawable/Drawable;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method static h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
