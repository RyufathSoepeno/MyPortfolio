.class Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LegacySavedStateHandleController;->c(Ly/c;Landroidx/lifecycle/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/f;

.field final synthetic b:Ly/c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/f;Ly/c;)V
    .registers 3

    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Landroidx/lifecycle/f;

    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:Ly/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 3

    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    if-ne p2, p1, :cond_10

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Landroidx/lifecycle/f;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/f;->c(Landroidx/lifecycle/h;)V

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:Ly/c;

    const-class p2, Landroidx/lifecycle/LegacySavedStateHandleController$a;

    invoke-virtual {p1, p2}, Ly/c;->i(Ljava/lang/Class;)V

    :cond_10
    return-void
.end method
