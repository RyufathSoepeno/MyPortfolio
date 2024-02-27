.class public final Landroidx/core/content/res/h$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/h$f$a;,
        Landroidx/core/content/res/h$f$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/res/Resources$Theme;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    invoke-static {p0}, Landroidx/core/content/res/h$f$b;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_11

    :cond_a
    const/16 v1, 0x17

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Landroidx/core/content/res/h$f$a;->a(Landroid/content/res/Resources$Theme;)V

    :cond_11
    :goto_11
    return-void
.end method
