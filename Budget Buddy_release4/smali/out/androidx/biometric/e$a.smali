.class Landroidx/biometric/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/e;->A2(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:Ljava/lang/CharSequence;

.field final synthetic g:Landroidx/biometric/e;


# direct methods
.method constructor <init>(Landroidx/biometric/e;ILjava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Landroidx/biometric/e$a;->g:Landroidx/biometric/e;

    iput p2, p0, Landroidx/biometric/e$a;->e:I

    iput-object p3, p0, Landroidx/biometric/e$a;->f:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidx/biometric/e$a;->g:Landroidx/biometric/e;

    iget-object v0, v0, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->m()Landroidx/biometric/BiometricPrompt$a;

    move-result-object v0

    iget v1, p0, Landroidx/biometric/e$a;->e:I

    iget-object v2, p0, Landroidx/biometric/e$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroidx/biometric/BiometricPrompt$a;->h(ILjava/lang/CharSequence;)V

    return-void
.end method
