.class Landroidx/biometric/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/e;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/o<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/e;


# direct methods
.method constructor <init>(Landroidx/biometric/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/e$g;->a:Landroidx/biometric/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/biometric/e$g;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroidx/biometric/e$g;->a:Landroidx/biometric/e;

    invoke-virtual {p1}, Landroidx/biometric/e;->p2()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroidx/biometric/e$g;->a:Landroidx/biometric/e;

    invoke-virtual {p1}, Landroidx/biometric/e;->y2()V

    goto :goto_19

    :cond_14
    iget-object p1, p0, Landroidx/biometric/e$g;->a:Landroidx/biometric/e;

    invoke-virtual {p1}, Landroidx/biometric/e;->x2()V

    :goto_19
    iget-object p1, p0, Landroidx/biometric/e$g;->a:Landroidx/biometric/e;

    iget-object p1, p1, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/k;->a0(Z)V

    :cond_21
    return-void
.end method
