.class Landroidx/appcompat/widget/q1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/q1;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/q1;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/q1$b;->e:Landroidx/appcompat/widget/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/q1$b;->e:Landroidx/appcompat/widget/q1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/q1;->c()V

    return-void
.end method
