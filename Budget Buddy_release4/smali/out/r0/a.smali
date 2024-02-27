.class public Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/a$b;
    }
.end annotation


# instance fields
.field public final a:Ls0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;

.field private c:Lr0/a$b;

.field public final d:Ls0/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf0/a;Lio/flutter/embedding/engine/FlutterJNI;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/a$a;

    invoke-direct {v0, p0}, Lr0/a$a;-><init>(Lr0/a;)V

    iput-object v0, p0, Lr0/a;->d:Ls0/a$d;

    new-instance v1, Ls0/a;

    sget-object v2, Ls0/p;->a:Ls0/p;

    const-string v3, "flutter/accessibility"

    invoke-direct {v1, p1, v3, v2}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    iput-object v1, p0, Lr0/a;->a:Ls0/a;

    invoke-virtual {v1, v0}, Ls0/a;->e(Ls0/a$d;)V

    iput-object p2, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method static synthetic a(Lr0/a;)Lr0/a$b;
    .registers 1

    iget-object p0, p0, Lr0/a;->c:Lr0/a$b;

    return-object p0
.end method


# virtual methods
.method public b(ILio/flutter/view/f$g;)V
    .registers 4

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/f$g;)V

    return-void
.end method

.method public c(ILio/flutter/view/f$g;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public f(I)V
    .registers 3

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public g(Lr0/a$b;)V
    .registers 3

    iput-object p1, p0, Lr0/a;->c:Lr0/a$b;

    iget-object v0, p0, Lr0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
.end method
