.class Lf/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private e:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    iget-object v0, p0, Lf/c$b;->e:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, Lf/c$b;->e:Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable$Callback;)Lf/c$b;
    .registers 2

    iput-object p1, p0, Lf/c$b;->e:Landroid/graphics/drawable/Drawable$Callback;

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    iget-object v0, p0, Lf/c$b;->e:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lf/c$b;->e:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
