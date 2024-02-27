.class Landroidx/biometric/q$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method static a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_9
    return-void
.end method
