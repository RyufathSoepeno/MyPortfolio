.class Landroidx/biometric/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/biometric/q;


# direct methods
.method constructor <init>(Landroidx/biometric/q;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/q$a;->e:Landroidx/biometric/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/biometric/q$a;->e:Landroidx/biometric/q;

    invoke-virtual {v0}, Landroidx/biometric/q;->s2()V

    return-void
.end method
