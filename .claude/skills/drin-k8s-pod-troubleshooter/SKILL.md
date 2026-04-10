---
name: drin-k8s-pod-troubleshooter
description: Systematic diagnostic workflow for failing Kubernetes pods (CrashLoopBackOff, Pending, etc).
status: production
---

# K8s Pod Troubleshooter

## Purpose
To minimize downtime by rapidly identifying and fixing container orchestration issues.

## Diagnostic Steps
1. **Status Check**: `kubectl get pods` - identify the failure state.
2. **Describe**: `kubectl describe pod [name]` - check events and resource limits.
3. **Logs**: `kubectl logs [name] --previous` - see why the container crashed.
4. **Shell**: If pod is running, `kubectl exec` to check environment and connectivity.
5. **Fix**: Update deployment manifest or configmaps based on findings.

## Output
A `ROOT-CAUSE-REPORT.md` with the fix applied and prevention steps.
