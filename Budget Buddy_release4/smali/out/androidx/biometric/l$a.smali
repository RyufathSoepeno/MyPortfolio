.class Landroidx/biometric/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/biometric/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/l;


# direct methods
.method constructor <init>(Landroidx/biometric/l;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/l$a;->a:Landroidx/biometric/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/CancellationSignal;
    .registers 2

    invoke-static {}, Landroidx/biometric/l$b;->b()Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/os/e;
    .registers 2

    new-instance v0, Landroidx/core/os/e;

    invoke-direct {v0}, Landroidx/core/os/e;-><init>()V

    return-object v0
.end method
