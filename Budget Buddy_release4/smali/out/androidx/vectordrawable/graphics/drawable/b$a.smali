.class Landroidx/vectordrawable/graphics/drawable/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/vectordrawable/graphics/drawable/b;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/b;)V
    .registers 2

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/b$a;->e:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/b$a;->e:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/b$a;->e:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/b$a;->e:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
